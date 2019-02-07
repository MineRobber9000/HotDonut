.class Lcom/jirbo/adcolony/JSON$JSTrueType;
.super Lcom/jirbo/adcolony/JSON$JSObject;
.source "JSON.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSTrueType"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    return-void
.end method


# virtual methods
.method toBoolean()Z
    .locals 1

    .prologue
    .line 884
    const/4 v0, 0x1

    return v0
.end method

.method toJSON(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 879
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    return-void
.end method
