import oracledb


def main():
  oracledb.init_oracle_client()
  c = oracledb.connect(host="localhost")


if __name__ == "__main__":
  main()
