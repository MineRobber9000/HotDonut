.class final Lcom/amazon/android/framework/prompt/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/n/c;


# instance fields
.field private synthetic a:Lcom/amazon/android/framework/prompt/PromptManagerImpl;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/prompt/PromptManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/prompt/f;->a:Lcom/amazon/android/framework/prompt/PromptManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/amazon/android/n/f;
    .locals 1

    sget-object v0, Lcom/amazon/android/j/c;->c:Lcom/amazon/android/j/c;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/amazon/android/n/d;)V
    .locals 2

    check-cast p1, Lcom/amazon/android/j/b;

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/f;->a:Lcom/amazon/android/framework/prompt/PromptManagerImpl;

    iget-object v1, p1, Lcom/amazon/android/j/b;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->a(Lcom/amazon/android/framework/prompt/PromptManagerImpl;Landroid/app/Activity;)V

    return-void
.end method

.method public final b()Lcom/amazon/android/n/a;
    .locals 1

    sget-object v0, Lcom/amazon/android/n/a;->b:Lcom/amazon/android/n/a;

    return-object v0
.end method
