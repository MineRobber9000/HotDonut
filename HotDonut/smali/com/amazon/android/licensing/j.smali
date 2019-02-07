.class final Lcom/amazon/android/licensing/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/licensing/h;


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/android/licensing/j;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/amazon/android/framework/exception/KiwiException;)Lcom/amazon/android/framework/prompt/PromptContent;
    .locals 2

    check-cast p1, Lcom/amazon/android/s/a;

    iget-object v0, p1, Lcom/amazon/android/s/a;->a:Lcom/amazon/android/k/a;

    sget-object v1, Lcom/amazon/android/licensing/k;->a:Lcom/amazon/android/licensing/k;

    iget-object v0, v0, Lcom/amazon/android/k/a;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/licensing/i;->d:Lcom/amazon/android/framework/prompt/PromptContent;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/android/licensing/i;->e:Lcom/amazon/android/framework/prompt/PromptContent;

    goto :goto_0
.end method
