.class public Lcom/amazon/ags/client/whispersync/SummaryBundleParser;
.super Ljava/lang/Object;
.source "SummaryBundleParser.java"


# static fields
.field private static marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;

    invoke-direct {v0}, Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;-><init>()V

    sput-object v0, Lcom/amazon/ags/client/whispersync/SummaryBundleParser;->marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static parse(Landroid/os/Bundle;)Lcom/amazon/ags/client/whispersync/GameSummary;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 31
    const-string v2, "CLOUD_GAME_SUMMARY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "cloudSummaryJson":Ljava/lang/String;
    const/4 v0, 0x0

    .line 33
    .local v0, "cloudSummary":Lcom/amazon/ags/client/whispersync/GameSummary;
    if-eqz v1, :cond_0

    .line 34
    sget-object v2, Lcom/amazon/ags/client/whispersync/SummaryBundleParser;->marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    invoke-interface {v2, v1}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;->unmarshal(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/GameSummary;

    move-result-object v0

    .line 36
    :cond_0
    return-object v0
.end method
