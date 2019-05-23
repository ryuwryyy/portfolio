using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NodeCreater : MonoBehaviour {
  private CSVReader CSVReader = new CSVReader();
  private List<List<string>> MAP = new List<List<string>>();
  private float time;
  public GameObject Node;
  private GameObject nodeParent;
  private GameObject lostPosition;
  private GameObject destination;
  private int Line = 0;
  public int Selector = 0;

  private void Awake()
  {
    nodeParent = gameObject.transform.parent.gameObject;
    destination = GameObject.Find(nodeParent.name + "/TapPosition");
    lostPosition = GameObject.Find(nodeParent.name + "/lostPosition");
    Selector = int.Parse(nodeParent.name.Replace("NodeLine", ""));
    MAP = CSVReader.readCSV("BangDream");
  }

  private void Update()
  {
    time += Time.deltaTime;
    if(time >= float.Parse(MAP[Line][0]))
    {
      if (int.Parse(MAP[Line][Selector]) == 1)
      {
        NodeCreate();
      }
      Line++;
    }
  }

  private void NodeCreate()
  {
    var node = (GameObject)Instantiate(Node, nodeParent.transform);
    node.GetComponent<NodeMove>().destination = destination;
    node.GetComponent<NodeMove>().lostPosition = lostPosition;
    node.transform.localPosition = this.transform.localPosition;
    node.transform.localRotation = this.transform.localRotation;
    node.transform.localScale = new Vector3(5.02f, 0.1f, 1.31f);
  }
}
