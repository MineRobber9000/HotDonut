.class Lcom/jirbo/adcolony/AdManager$VideoInfo;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoInfo"
.end annotation


# static fields
.field static final external:I = 0x0

.field static final internal:I = 0x1


# instance fields
.field image_filepath:Ljava/lang/String;

.field properties:Lcom/jirbo/adcolony/JSON$JSObject;

.field video_filepath:Ljava/lang/String;

.field zone:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;Lcom/jirbo/adcolony/JSON$JSObject;I)V
    .locals 4
    .param p1, "zone"    # Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;
    .param p2, "json"    # Lcom/jirbo/adcolony/JSON$JSObject;
    .param p3, "type"    # I

    .prologue
    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    new-instance v1, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v1}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    .line 1068
    iput-object p1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->zone:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    .line 1070
    if-nez p3, :cond_2

    .line 1072
    new-instance v1, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v1}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    .line 1073
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "video_url"

    const-string v3, "url"

    invoke-virtual {p2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "image_url"

    const-string v3, "image"

    invoke-virtual {p2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "info_link"

    const-string v3, "sponserpage"

    invoke-virtual {p2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "download_link"

    const-string v3, "appstorelink"

    invoke-virtual {p2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string v1, "ext_tracking_urls"

    invoke-virtual {p2, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    .line 1083
    .local v0, "ext_tracking_urls":Lcom/jirbo/adcolony/JSON$JSObject;
    if-eqz v0, :cond_0

    .line 1085
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "ext_tracking_start"

    const-string v3, "start"

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 1086
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "ext_tracking_impression"

    const-string v3, "impression"

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 1087
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "ext_tracking_download"

    const-string v3, "click1"

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 1088
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "ext_tracking_info"

    const-string v3, "click2"

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 1091
    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "ad_id"

    const-string v3, "adid"

    invoke-virtual {p2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "video_id"

    const-string v3, "videoid"

    invoke-virtual {p2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "video_hash"

    const-string v3, "vidhash"

    invoke-virtual {p2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "image_hash"

    const-string v3, "imghash"

    invoke-virtual {p2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const-string v1, "expirationdate"

    invoke-virtual {p2, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1098
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "expiration"

    const-string v3, "expirationdate"

    invoke-virtual {p2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :cond_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->init()V

    .line 1109
    .end local v0    # "ext_tracking_urls":Lcom/jirbo/adcolony/JSON$JSObject;
    :goto_0
    return-void

    .line 1105
    :cond_2
    iput-object p2, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    .line 1107
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->init()V

    goto :goto_0
.end method


# virtual methods
.method adID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "ad_id"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method downloadLink()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "download_link"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method expiration()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "expiration"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0000-00-00"

    .line 1146
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "expiration"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method expired()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1151
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->expiration()Ljava/lang/String;

    move-result-object v0

    .line 1152
    .local v0, "expiration":Ljava/lang/String;
    const-string v2, "0000-00-00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/AdManager;->todaysDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method hasImageURL(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "image_url"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hasVideoURL(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "video_url"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method infoLink()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "info_link"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method init()V
    .locals 8

    .prologue
    const/16 v7, 0x2f

    .line 1113
    iget-object v5, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v6, "video_url"

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1114
    .local v4, "video_url":Ljava/lang/String;
    iget-object v5, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v6, "image_url"

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1115
    .local v2, "image_url":Ljava/lang/String;
    iget-object v5, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v6, "video_hash"

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1116
    .local v3, "video_hash":Ljava/lang/String;
    iget-object v5, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v6, "image_hash"

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1117
    .local v1, "image_hash":Ljava/lang/String;
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v5

    iget-object v0, v5, Lcom/jirbo/adcolony/AdManager;->data_dir:Ljava/lang/String;

    .line 1119
    .local v0, "data_dir":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->video_filepath:Ljava/lang/String;

    .line 1120
    iget-object v5, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->video_filepath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 1122
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No filename in URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1124
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->video_filepath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->video_filepath:Ljava/lang/String;

    .line 1126
    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->image_filepath:Ljava/lang/String;

    .line 1127
    iget-object v5, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->image_filepath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1129
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No filename in URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1131
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->image_filepath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->image_filepath:Ljava/lang/String;

    .line 1133
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v5

    iget-object v5, v5, Lcom/jirbo/adcolony/AdManager;->downloader:Lcom/jirbo/adcolony/AdManager$Downloader;

    iget-object v6, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->video_filepath:Ljava/lang/String;

    invoke-virtual {v5, v4, v6, v3}, Lcom/jirbo/adcolony/AdManager$Downloader;->queue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v5

    iget-object v5, v5, Lcom/jirbo/adcolony/AdManager;->downloader:Lcom/jirbo/adcolony/AdManager$Downloader;

    iget-object v6, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->image_filepath:Ljava/lang/String;

    invoke-virtual {v5, v2, v6, v1}, Lcom/jirbo/adcolony/AdManager$Downloader;->queue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    return-void
.end method

.method isReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1159
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->expired()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return v1

    .line 1160
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v2

    iget-object v0, v2, Lcom/jirbo/adcolony/AdManager;->resources:Lcom/jirbo/adcolony/AdManager$ResourceGroup;

    .line 1161
    .local v0, "resources":Lcom/jirbo/adcolony/AdManager$ResourceGroup;
    const-string v2, "info-icon-normal"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->isReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1162
    const-string v2, "info-icon-pushed"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->isReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1163
    const-string v2, "buy-icon-normal"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->isReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1164
    const-string v2, "buy-icon-pushed"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->isReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1165
    const-string v2, "replay-icon-normal"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->isReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1166
    const-string v2, "replay-icon-pushed"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->isReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1167
    const-string v2, "continue-icon-normal"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->isReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1168
    const-string v2, "continue-icon-pushed"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->isReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1169
    iget-object v2, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->zone:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->getMaxPlays()I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->zone:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->getCurPlays()I

    move-result v2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->zone:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->getMaxPlays()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1170
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->video_filepath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->image_filepath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method toJSObject()Lcom/jirbo/adcolony/JSON$JSObject;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method videoID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "video_id"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method videoURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v1, "video_url"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
