.class public Lcom/amazon/ags/client/whispersync/savedgame/SimpleGameSummary;
.super Ljava/lang/Object;
.source "SimpleGameSummary.java"

# interfaces
.implements Lcom/amazon/ags/client/whispersync/GameSummary;


# instance fields
.field private description:Ljava/lang/String;

.field private device:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private saveDate:Ljava/util/Date;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;
    .param p3, "saveDate"    # Ljava/util/Date;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "device"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p5, p0, Lcom/amazon/ags/client/whispersync/savedgame/SimpleGameSummary;->device:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/savedgame/SimpleGameSummary;->md5:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/amazon/ags/client/whispersync/savedgame/SimpleGameSummary;->saveDate:Ljava/util/Date;

    .line 30
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/savedgame/SimpleGameSummary;->version:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/amazon/ags/client/whispersync/savedgame/SimpleGameSummary;->description:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/savedgame/SimpleGameSummary;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/savedgame/SimpleGameSummary;->device:Ljava/lang/String;

    return-object v0
.end method

.method public final getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/savedgame/SimpleGameSummary;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public final getSaveDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/savedgame/SimpleGameSummary;->saveDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/savedgame/SimpleGameSummary;->version:Ljava/lang/String;

    return-object v0
.end method
