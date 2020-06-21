package util;

public class UrlMatcher {
    private final String[] patterns;
    public UrlMatcher(String... patterns){
        this.patterns = patterns;
    }

    /**
     * 判断路径是否与已保存路径对应
     * @param url 匹配路径
     * @return 是否匹配
     */
    public boolean matches(String url){
        for (String pattern : patterns){
            if(url.matches(pattern)){
                return true;
            }
        }
        return false;
    }

    public static boolean isApi(String url){
        return url.matches("/api*");
    }
}
