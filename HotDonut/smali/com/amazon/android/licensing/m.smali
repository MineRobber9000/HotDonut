.class final Lcom/amazon/android/licensing/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/licensing/h;


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/android/licensing/m;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amazon/android/licensing/a;

    invoke-direct {v0, p0}, Lcom/amazon/android/licensing/a;-><init>(Lcom/amazon/android/licensing/m;)V

    iput-object v0, p0, Lcom/amazon/android/licensing/m;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/amazon/android/framework/exception/KiwiException;)Lcom/amazon/android/framework/prompt/PromptContent;
    .locals 2

    check-cast p1, Lcom/amazon/android/b/e;

    iget-object v0, p0, Lcom/amazon/android/licensing/m;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/android/b/e;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/framework/prompt/PromptContent;

    if-eqz p0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/android/licensing/i;->e:Lcom/amazon/android/framework/prompt/PromptContent;

    goto :goto_0
.end method
