.class Lcom/jirbo/adcolony/StateManager$ZoneState;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZoneState"
.end annotation


# instance fields
.field cur_interval:I

.field cur_plays:I

.field cur_vc_plays:I

.field cur_video_plays:I

.field last_vc_date:Ljava/lang/String;

.field playlist_index:I

.field zone_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/JSON$JSObject;)V
    .locals 2
    .param p1, "json"    # Lcom/jirbo/adcolony/JSON$JSObject;

    .prologue
    const/4 v1, 0x0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const-string v0, "never"

    iput-object v0, p0, Lcom/jirbo/adcolony/StateManager$ZoneState;->last_vc_date:Ljava/lang/String;

    .line 387
    const-string v0, "zone_id"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/StateManager$ZoneState;->zone_id:Ljava/lang/String;

    .line 388
    const-string v0, "last_vc_date"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/StateManager$ZoneState;->last_vc_date:Ljava/lang/String;

    .line 389
    const-string v0, "cur_vc_plays"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/StateManager$ZoneState;->cur_vc_plays:I

    .line 390
    const-string v0, "playlist_index"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/StateManager$ZoneState;->playlist_index:I

    .line 391
    iput v1, p0, Lcom/jirbo/adcolony/StateManager$ZoneState;->cur_plays:I

    .line 392
    iput v1, p0, Lcom/jirbo/adcolony/StateManager$ZoneState;->cur_interval:I

    .line 393
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const-string v0, "never"

    iput-object v0, p0, Lcom/jirbo/adcolony/StateManager$ZoneState;->last_vc_date:Ljava/lang/String;

    .line 382
    iput-object p1, p0, Lcom/jirbo/adcolony/StateManager$ZoneState;->zone_id:Ljava/lang/String;

    .line 383
    return-void
.end method


# virtual methods
.method store(Lcom/jirbo/adcolony/JSON$JSObject;)V
    .locals 3
    .param p1, "json"    # Lcom/jirbo/adcolony/JSON$JSObject;

    .prologue
    .line 397
    const-string v0, "zone_id"

    iget-object v1, p0, Lcom/jirbo/adcolony/StateManager$ZoneState;->zone_id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v0, "last_vc_date"

    iget-object v1, p0, Lcom/jirbo/adcolony/StateManager$ZoneState;->last_vc_date:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v0, "cur_vc_plays"

    iget v1, p0, Lcom/jirbo/adcolony/StateManager$ZoneState;->cur_vc_plays:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;J)V

    .line 400
    const-string v0, "playlist_index"

    iget v1, p0, Lcom/jirbo/adcolony/StateManager$ZoneState;->playlist_index:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;J)V

    .line 401
    return-void
.end method
