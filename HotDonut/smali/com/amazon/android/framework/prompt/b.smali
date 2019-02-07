.class final Lcom/amazon/android/framework/prompt/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/amazon/android/framework/prompt/Prompt;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/prompt/Prompt;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/prompt/b;->a:Lcom/amazon/android/framework/prompt/Prompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
