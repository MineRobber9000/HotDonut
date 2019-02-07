.class Lcom/fbt/Pubnub$ChannelStatus;
.super Ljava/lang/Object;
.source "Pubnub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fbt/Pubnub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelStatus"
.end annotation


# instance fields
.field channel:Ljava/lang/String;

.field connected:Z

.field first:Z

.field final synthetic this$0:Lcom/fbt/Pubnub;


# direct methods
.method private constructor <init>(Lcom/fbt/Pubnub;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fbt/Pubnub$ChannelStatus;->this$0:Lcom/fbt/Pubnub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fbt/Pubnub;Lcom/fbt/Pubnub$ChannelStatus;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/fbt/Pubnub$ChannelStatus;-><init>(Lcom/fbt/Pubnub;)V

    return-void
.end method
