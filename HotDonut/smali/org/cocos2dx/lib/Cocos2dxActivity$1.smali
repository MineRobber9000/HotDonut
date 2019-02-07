.class Lorg/cocos2dx/lib/Cocos2dxActivity$1;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Lcom/amazon/ags/api/AmazonGamesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$amazon$ags$api$AmazonGamesStatus:[I


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$com$amazon$ags$api$AmazonGamesStatus()[I
    .locals 3

    .prologue
    .line 431
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->$SWITCH_TABLE$com$amazon$ags$api$AmazonGamesStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesStatus;->values()[Lcom/amazon/ags/api/AmazonGamesStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->CANNOT_AUTHORIZE:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-virtual {v1}, Lcom/amazon/ags/api/AmazonGamesStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->CANNOT_BIND:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-virtual {v1}, Lcom/amazon/ags/api/AmazonGamesStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->INITIALIZING:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-virtual {v1}, Lcom/amazon/ags/api/AmazonGamesStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->INVALID_SESSION:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-virtual {v1}, Lcom/amazon/ags/api/AmazonGamesStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->NOT_AUTHENTICATED:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-virtual {v1}, Lcom/amazon/ags/api/AmazonGamesStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->NOT_AUTHORIZED:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-virtual {v1}, Lcom/amazon/ags/api/AmazonGamesStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_CONNECTED:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-virtual {v1}, Lcom/amazon/ags/api/AmazonGamesStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_DISCONNECTED:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-virtual {v1}, Lcom/amazon/ags/api/AmazonGamesStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_NOT_OPTED_IN:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-virtual {v1}, Lcom/amazon/ags/api/AmazonGamesStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->$SWITCH_TABLE$com$amazon$ags$api$AmazonGamesStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceNotReady(Lcom/amazon/ags/api/AmazonGamesStatus;)V
    .locals 2
    .param p1, "reason"    # Lcom/amazon/ags/api/AmazonGamesStatus;

    .prologue
    .line 439
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->$SWITCH_TABLE$com$amazon$ags$api$AmazonGamesStatus()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/ags/api/AmazonGamesStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 471
    :goto_0
    :pswitch_0
    return-void

    .line 467
    :pswitch_1
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->AMAZON_GAMECIRCLE:Z

    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceReady()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method
