.class final Lcom/amazon/android/framework/prompt/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/n/c;


# instance fields
.field private synthetic a:Lcom/amazon/android/framework/prompt/PromptManagerImpl;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/prompt/PromptManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/prompt/j;->a:Lcom/amazon/android/framework/prompt/PromptManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/amazon/android/n/f;
    .locals 1

    sget-object v0, Lcom/amazon/android/a;->a:Lcom/amazon/android/n/f;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/amazon/android/n/d;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/j;->a:Lcom/amazon/android/framework/prompt/PromptManagerImpl;

    invoke-static {v0}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->b(Lcom/amazon/android/framework/prompt/PromptManagerImpl;)Lcom/amazon/android/framework/prompt/Prompt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/j;->a:Lcom/amazon/android/framework/prompt/PromptManagerImpl;

    invoke-static {v0}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->b(Lcom/amazon/android/framework/prompt/PromptManagerImpl;)Lcom/amazon/android/framework/prompt/Prompt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/framework/prompt/Prompt;->expire()V

    :cond_0
    return-void
.end method

.method public final b()Lcom/amazon/android/n/a;
    .locals 1

    sget-object v0, Lcom/amazon/android/n/a;->b:Lcom/amazon/android/n/a;

    return-object v0
.end method
