#!/bin/bash

# 🚀 Navigate to verl and install in editable mode
cd verl
echo "📦 Installing verl in editable mode..."
pip install -e .

# 🔙 Go back to the root directory
cd ..

# 🛠️ Install build tools and dependencies
echo "📦 Installing wheel..."
pip install wheel

echo "⚡ Installing flash-attn (no build isolation)..."
pip install flash-attn --no-build-isolation

echo "📜 Installing from requirements.txt..."
pip install -r requirements.txt

# 🔄 Replace vllm with specific version
echo "🧹 Uninstalling existing vllm..."
pip uninstall -y vllm

echo "📦 Installing vllm==0.7.3..."
pip install vllm==0.7.3

# 🤖 Install specific Transformers version
echo "🧠 Installing transformers==4.47.1..."
pip install transformers==4.47.1

# ➕ Extra dependencies
echo "🧮 Installing math-verify with antlr4_9_3..."
pip install "math-verify[antlr4_9_3]"

echo "🐞 Installing debugpy for debugging..."
pip install debugpy

echo "✅ Done!"
