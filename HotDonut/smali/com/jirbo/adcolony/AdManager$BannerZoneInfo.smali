.class Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;
.super Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BannerZoneInfo"
.end annotation


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/JSON$JSObject;I)V
    .locals 3
    .param p1, "json"    # Lcom/jirbo/adcolony/JSON$JSObject;
    .param p2, "type"    # I

    .prologue
    .line 1203
    invoke-direct {p0, p1, p2}, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;-><init>(Lcom/jirbo/adcolony/JSON$JSObject;I)V

    .line 1205
    if-nez p2, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "type"

    const-string v2, "banner_zone"

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "url"

    const-string v2, "display-url"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "reload_period"

    const-string v2, "reload-period"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    :cond_0
    return-void
.end method


# virtual methods
.method url()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
