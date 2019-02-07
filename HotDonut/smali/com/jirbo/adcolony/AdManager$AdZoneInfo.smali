.class abstract Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AdZoneInfo"
.end annotation


# static fields
.field static final external:I = 0x0

.field static final internal:I = 0x1


# instance fields
.field properties:Lcom/jirbo/adcolony/JSON$JSObject;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/JSON$JSObject;I)V
    .locals 5
    .param p1, "json"    # Lcom/jirbo/adcolony/JSON$JSObject;
    .param p2, "type"    # I

    .prologue
    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 612
    iput-object p1, p0, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    .line 628
    :goto_0
    return-void

    .line 616
    :cond_0
    new-instance v1, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v1}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    .line 617
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "zone"

    const-string v3, "zone"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v1, "active"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    .line 619
    .local v0, "active_value":Lcom/jirbo/adcolony/JSON$JSObject;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "active"

    new-instance v3, Lcom/jirbo/adcolony/JSON$JSString;

    const-string v4, "NO"

    invoke-direct {v3, v4}, Lcom/jirbo/adcolony/JSON$JSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    goto :goto_0

    .line 625
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "active"

    new-instance v3, Lcom/jirbo/adcolony/JSON$JSString;

    const-string v4, "YES"

    invoke-direct {v3, v4}, Lcom/jirbo/adcolony/JSON$JSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    goto :goto_0
.end method

.method static create_from(Lcom/jirbo/adcolony/JSON$JSObject;)Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    .locals 5
    .param p0, "json"    # Lcom/jirbo/adcolony/JSON$JSObject;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 580
    const-string v2, "active"

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "active"

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "YES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-object v1

    .line 585
    :cond_1
    const-string v2, "type"

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "type":Ljava/lang/String;
    const-string v2, "fullscreen-video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 588
    const-string v1, "Received video zone info."

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V

    .line 589
    new-instance v1, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-direct {v1, p0, v4}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;-><init>(Lcom/jirbo/adcolony/JSON$JSObject;I)V

    goto :goto_0

    .line 591
    :cond_2
    const-string v2, "stable-banner"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 593
    const-string v1, "Received banner zone info."

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V

    .line 594
    new-instance v1, Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;

    invoke-direct {v1, p0, v4}, Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;-><init>(Lcom/jirbo/adcolony/JSON$JSObject;I)V

    goto :goto_0
.end method


# virtual methods
.method toJSObject()Lcom/jirbo/adcolony/JSON$JSObject;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method type()Ljava/lang/String;
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "zone"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
