package org.cqtguniversity.lqms;

import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.*;
import java.math.BigDecimal;
import java.util.*;
import java.util.stream.Collectors;

@RunWith(SpringRunner.class)
@SpringBootTest
@ActiveProfiles("163")
public class LqmsApplicationTests {

    private static Map<Character, Integer> charCount = new HashMap<>();

    private static int max = 0;

    private static void count(String s) {
        for (int i = 0; i < s.length(); i++) {
            int count = charCount.get(s.charAt(i)) == null ? 1 : charCount.get(s.charAt(i)) + 1;
            max = count > max ? count : max;
            charCount.put(s.charAt(i), count);
        }
    }

    public static void main(String[] args) {
        //String string = "11,2,4.5,8,9,6.023";
        //StringBuilder stringBuilder = new StringBuilder();
        //List<Float> floatList = Arrays.stream(string.split(",")).map(Float::parseFloat).sorted(Comparator.reverseOrder()).collect(Collectors.toList());
        //floatList.forEach(Float -> {
        //    String[] strings = Float.toString().split("\\.");
        //    stringBuilder.append(strings[0]).append("0".equals(strings[1]) ? "" : "." + strings[1]).append(",");
        //});
        //System.out.println(stringBuilder.deleteCharAt(stringBuilder.length() - 1));

         /* 读入TXT文件 */
        String pathname = "D:\\temp\\input.txt"; // 绝对路径或相对路径都可以，这里是绝对路径，写入文件时演示相对路径
        File filename = new File(pathname); // 要读取以上路径的input。txt文件
        InputStreamReader reader = null; // 建立一个输入流对象reader
        try {
            reader = new InputStreamReader(
                    new FileInputStream(filename));
            BufferedReader br = new BufferedReader(reader); // 建立一个对象，它把文件内容转成计算机能读懂的语言
            String line = "";
            line = br.readLine();
            while (line != null) {
                count(line.toLowerCase());
                line = br.readLine(); // 一次读入一行数据
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        StringBuilder stringBuilder = new StringBuilder("出现最多的字符为：");
        charCount.forEach((Character, Integer) -> {
            if (max == Integer) {
                stringBuilder.append(Character).append(",");
            }
        });
        System.out.println(stringBuilder.deleteCharAt(stringBuilder.length() - 1).append("  出现次数为").append(max));
    }


}

