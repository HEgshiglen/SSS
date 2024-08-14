package jp.co.axiz.sss.util;

import jakarta.servlet.http.HttpServletRequest;

public class ParamUtil {

    /**
     * Retrieves a String parameter from the request.
     * 
     * @param request The HTTP request.
     * @param paramName The name of the parameter.
     * @return The parameter value, or an empty string if the parameter is not found.
     */
    public static String getString(HttpServletRequest request, String paramName) {
        String value = request.getParameter(paramName);
        return value != null ? value : "";
    }

    /**
     * Retrieves an Integer parameter from the request.
     * 
     * @param request The HTTP request.
     * @param paramName The name of the parameter.
     * @return The parameter value as an Integer, or null if the parameter is not found or cannot be converted.
     */
    public static Integer getInteger(HttpServletRequest request, String paramName) {
        String value = request.getParameter(paramName);
        try {
            return value != null ? Integer.parseInt(value) : null;
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /**
     * Retrieves a Boolean parameter from the request.
     * 
     * @param request The HTTP request.
     * @param paramName The name of the parameter.
     * @return The parameter value as a Boolean, or false if the parameter is not found or cannot be converted.
     */
    public static Boolean getBoolean(HttpServletRequest request, String paramName) {
        String value = request.getParameter(paramName);
        return value != null ? Boolean.parseBoolean(value) : false;
    }

    /**
     * Retrieves a Double parameter from the request.
     * 
     * @param request The HTTP request.
     * @param paramName The name of the parameter.
     * @return The parameter value as a Double, or null if the parameter is not found or cannot be converted.
     */
    public static Double getDouble(HttpServletRequest request, String paramName) {
        String value = request.getParameter(paramName);
        try {
            return value != null ? Double.parseDouble(value) : null;
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /**
     * Retrieves a parameter and trims any leading or trailing whitespace.
     * 
     * @param request The HTTP request.
     * @param paramName The name of the parameter.
     * @return The trimmed parameter value, or an empty string if the parameter is not found.
     */
    public static String getTrimmedString(HttpServletRequest request, String paramName) {
        String value = getString(request, paramName);
        return value.trim();
    }
}
