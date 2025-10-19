import gradio as gr

def greet(name):
    return f"Hello {name}, I'm Duan Shuo"

demo = gr.Interface(fn=greet, inputs="textbox", outputs="textbox")

if __name__ == "__main__":
    demo.launch()

