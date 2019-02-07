.class public Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;
.super Ljava/lang/Object;


# instance fields
.field private final mappings:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->mappings:Ljava/util/Map;

    const-class v0, Lcom/amazon/android/b/g;

    sget-object v1, Lcom/amazon/android/licensing/i;->a:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->register(Ljava/lang/Class;Lcom/amazon/android/framework/prompt/PromptContent;)V

    const-class v0, Lcom/amazon/android/b/f;

    sget-object v1, Lcom/amazon/android/licensing/i;->a:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->register(Ljava/lang/Class;Lcom/amazon/android/framework/prompt/PromptContent;)V

    const-class v0, Lcom/amazon/android/b/a;

    sget-object v1, Lcom/amazon/android/licensing/i;->b:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->register(Ljava/lang/Class;Lcom/amazon/android/framework/prompt/PromptContent;)V

    const-class v0, Lcom/amazon/android/b/d;

    sget-object v1, Lcom/amazon/android/licensing/i;->c:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->register(Ljava/lang/Class;Lcom/amazon/android/framework/prompt/PromptContent;)V

    const-class v0, Lcom/amazon/android/b/e;

    new-instance v1, Lcom/amazon/android/licensing/m;

    invoke-direct {v1}, Lcom/amazon/android/licensing/m;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->register(Ljava/lang/Class;Lcom/amazon/android/licensing/h;)V

    const-class v0, Lcom/amazon/android/b/h;

    sget-object v1, Lcom/amazon/android/licensing/i;->e:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->register(Ljava/lang/Class;Lcom/amazon/android/framework/prompt/PromptContent;)V

    const-class v0, Lcom/amazon/android/b/b;

    sget-object v1, Lcom/amazon/android/licensing/i;->e:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->register(Ljava/lang/Class;Lcom/amazon/android/framework/prompt/PromptContent;)V

    const-class v0, Lcom/amazon/android/s/a;

    new-instance v1, Lcom/amazon/android/licensing/j;

    invoke-direct {v1}, Lcom/amazon/android/licensing/j;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->register(Ljava/lang/Class;Lcom/amazon/android/licensing/h;)V

    const-class v0, Lcom/amazon/android/h/a;

    sget-object v1, Lcom/amazon/android/licensing/i;->e:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->register(Ljava/lang/Class;Lcom/amazon/android/framework/prompt/PromptContent;)V

    const-class v0, Lcom/amazon/android/h/b;

    sget-object v1, Lcom/amazon/android/licensing/i;->e:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->register(Ljava/lang/Class;Lcom/amazon/android/framework/prompt/PromptContent;)V

    const-class v0, Lcom/amazon/android/h/c;

    sget-object v1, Lcom/amazon/android/licensing/i;->e:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->register(Ljava/lang/Class;Lcom/amazon/android/framework/prompt/PromptContent;)V

    return-void
.end method

.method private register(Ljava/lang/Class;Lcom/amazon/android/framework/prompt/PromptContent;)V
    .locals 1

    new-instance v0, Lcom/amazon/android/licensing/g;

    invoke-direct {v0, p0, p2}, Lcom/amazon/android/licensing/g;-><init>(Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;Lcom/amazon/android/framework/prompt/PromptContent;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->register(Ljava/lang/Class;Lcom/amazon/android/licensing/h;)V

    return-void
.end method

.method private register(Ljava/lang/Class;Lcom/amazon/android/licensing/h;)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->mappings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mapping exists for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/android/d/a;->b(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->mappings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public map(Lcom/amazon/android/framework/exception/KiwiException;)Lcom/amazon/android/framework/prompt/PromptContent;
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->mappings:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/licensing/h;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1}, Lcom/amazon/android/licensing/h;->a(Lcom/amazon/android/framework/exception/KiwiException;)Lcom/amazon/android/framework/prompt/PromptContent;

    move-result-object v0

    goto :goto_0
.end method
