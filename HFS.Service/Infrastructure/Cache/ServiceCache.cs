using System;
using System.Collections.Generic;
using System.Runtime.Caching;
using System.Linq;
using System.Web;

namespace HFS.Service.Infrastructure
{
    public static class ServiceCache
    {
        private static readonly MemoryCache Cache = MemoryCache.Default;

        public static void AddToCache(string key, object value, int minutes, IEnumerable<string> dependencies)
        {
            if (!string.IsNullOrWhiteSpace(key) && value != null)
            {
                CacheItemPolicy policy = new CacheItemPolicy
                {
                    AbsoluteExpiration = DateTimeOffset.Now.AddMinutes(minutes),
                };

                if (dependencies != null && dependencies.Any())
                {
                    policy.ChangeMonitors.Add(MemoryCache.Default.CreateCacheEntryChangeMonitor(dependencies));
                }

                var item = new CacheItem(key, value);
                Cache.Add(item, policy);
            }
        }

        public static T GetFromCache<T>(string key, Func<object> aquire, int minutes, params string[] dependencies )
        {
            if (MemoryCache.Default.Contains(key))
            {
                return (T)Cache.Get(key);
            }

            var result = aquire();
            AddToCache(key, result, minutes, dependencies);
            return (T)result;
        }

        public static void InvalidateCache(string key)
        {
            Cache.Set(key, Guid.NewGuid(), DateTimeOffset.Now.AddMinutes(15));
        }

    }
}