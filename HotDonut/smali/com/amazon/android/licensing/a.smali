.class final Lcom/amazon/android/licensing/a;
.super Ljava/util/HashMap;


# instance fields
.field private synthetic a:Lcom/amazon/android/licensing/m;


# direct methods
.method constructor <init>(Lcom/amazon/android/licensing/m;)V
    .locals 2

    iput-object p1, p0, Lcom/amazon/android/licensing/a;->a:Lcom/amazon/android/licensing/m;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "NO_INTERNET"

    sget-object v1, Lcom/amazon/android/licensing/i;->d:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/android/licensing/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "INVALID_CONTENT_ID"

    sget-object v1, Lcom/amazon/android/licensing/i;->e:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/android/licensing/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "INTERNAL_SERVICE_ERROR"

    sget-object v1, Lcom/amazon/android/licensing/i;->f:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/android/licensing/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
