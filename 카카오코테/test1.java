package 카카오코테;

/**
 * test1
 */
public class test1 {

    public static void main(String[] args) {
        String str = "23four5six7";
        String num ="";
        int answer=0;
        String s = "";
        for (int i = 0; i < str.length(); i++) {
            s += str.charAt(i);
            if ((int)str.charAt(i)-'0'>=0&&(int)str.charAt(i)-'0'<10) {
                num += (int)str.charAt(i)-'0';
                s="";
            }else if (s.equals("zero")) {
                num += 0;s="";
            }else if (s.equals("one")) {
                num += 1;s="";
            }else if (s.equals("two")) {
                num += 2;s="";
            }else if (s.equals("three")) {
                num += 3;s="";
            }else if (s.equals("four")) {
                num += 4;s="";
            }else if (s.equals("five")) {
                num += 5;s="";
            }else if (s.equals("six")) {
                num += 6;s="";
            }else if (s.equals("seven")) {
                num += 7;s="";
            }else if (s.equals("eight")) {
                num += 8;s="";
            }else if (s.equals("nine")) {
                num += 9;s="";
            }
        }
        System.out.println(num);
        answer = Integer.parseInt(num);
        System.out.println(answer);


    }
}