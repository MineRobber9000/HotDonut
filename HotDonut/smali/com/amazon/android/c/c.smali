.class final Lcom/amazon/android/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private synthetic a:Lcom/amazon/android/c/a;


# direct methods
.method constructor <init>(Lcom/amazon/android/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/c/c;->a:Lcom/amazon/android/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".amzst"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/c/c;->a:Lcom/amazon/android/c/a;

    invoke-static {v0}, Lcom/amazon/android/c/a;->a(Lcom/amazon/android/c/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
