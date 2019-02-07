.class public abstract Lcom/amazon/android/framework/prompt/SimplePrompt;
.super Lcom/amazon/android/framework/prompt/Prompt;


# instance fields
.field protected final content:Lcom/amazon/android/framework/prompt/PromptContent;


# direct methods
.method public constructor <init>(Lcom/amazon/android/framework/prompt/PromptContent;)V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/android/framework/prompt/Prompt;-><init>()V

    const-string v0, "content"

    invoke-static {p1, v0}, Lcom/amazon/android/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/android/framework/prompt/SimplePrompt;->content:Lcom/amazon/android/framework/prompt/PromptContent;

    return-void
.end method


# virtual methods
.method protected abstract doAction()V
.end method

.method protected doCompatibilityCheck(Landroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/SimplePrompt;->content:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-virtual {v0}, Lcom/amazon/android/framework/prompt/PromptContent;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final doCreate(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/amazon/android/framework/prompt/SimplePrompt;->content:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-virtual {v1}, Lcom/amazon/android/framework/prompt/PromptContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/prompt/SimplePrompt;->content:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-virtual {v2}, Lcom/amazon/android/framework/prompt/PromptContent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/prompt/SimplePrompt;->content:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-virtual {v2}, Lcom/amazon/android/framework/prompt/PromptContent;->getButtonLabel()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/amazon/android/framework/prompt/g;

    invoke-direct {v3, p0}, Lcom/amazon/android/framework/prompt/g;-><init>(Lcom/amazon/android/framework/prompt/SimplePrompt;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected doExpiration(Lcom/amazon/android/framework/prompt/d;)V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/android/framework/prompt/SimplePrompt;->doAction()V

    return-void
.end method
