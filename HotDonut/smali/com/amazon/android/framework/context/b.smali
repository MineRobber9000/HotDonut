.class final Lcom/amazon/android/framework/context/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/amazon/android/framework/context/d;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/context/d;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/context/b;->a:Lcom/amazon/android/framework/context/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/context/b;->a:Lcom/amazon/android/framework/context/d;

    invoke-static {v0, p2}, Lcom/amazon/android/framework/context/d;->a(Lcom/amazon/android/framework/context/d;Landroid/content/Intent;)V

    return-void
.end method
