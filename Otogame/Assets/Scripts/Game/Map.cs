using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Map : MonoBehaviour {
  private CSVWritter csvWriter = new CSVWritter();
  private List<List<string>> csv = new List<List<string>>();
  private Text text;
  int a = 0;
  int s = 0;
  int d = 0;
  float time = 0;

  private void Awake()
  {
    text = GameObject.Find("Text").GetComponent<Text>();
  }

  void LateUpdate()
  {
    time += Time.deltaTime;
    if (a + s + d != 0)
    {
      List<string> line = new List<string>();
      line.Add(time.ToString());
      line.Add(a.ToString());
      line.Add(s.ToString());
      line.Add(d.ToString());
      csv.Add(line);
      a = s = d = 0;
    }
    if (Input.anyKey)
    {
      if (Input.GetKeyDown("a"))
      {
        a = 1;
        text.text = "A";
      }
      if (Input.GetKeyDown("s"))
      {
        s = 1;
        text.text = "S";
      }
      if (Input.GetKeyDown("d"))
      {
        d = 1;
        text.text = "D";
      }
    }
  }

  private void OnApplicationQuit()
  {
    csvWriter.writeCSV(csv, "BangDream.csv");
  }
}