using System;
using System.Collections.Generic;
using System.Runtime.Caching;
using System.Linq;
using System.Web;

namespace HFS.Infrastructure
{
    public static class LotsCache
    {
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
                MemoryCache.Default.Add(item, policy);
            }
        }

        public static object GetFromCache(string key, Func<object> aquire, int minutes, params string[] dependencies )
        {
            if (MemoryCache.Default.Contains(key))
            {
                return MemoryCache.Default.Get(key);
            }

            var result = aquire();
            AddToCache(key, result, minutes, dependencies);
            return result;
        }
    }
}