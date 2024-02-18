import pandas as pd
import matplotlib.pyplot as plt


def main():
    data = pd.read_csv("output.csv")
    data["date"] = pd.to_datetime(data["date"])

    plt.figure(figsize=(10, 6))
    plt.plot(data["date"], data["free-mem"])

    plt.title("Free Memory")
    plt.xlabel("Time")
    plt.ylabel("Free Memory (MB)")
    plt.grid(True)
    plt.xticks(rotation=90)
    plt.tight_layout()

    plt.savefig("output.png")


if __name__ == "__main__":
    main()
