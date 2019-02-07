.class final enum Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;
.super Ljava/lang/Enum;
.source "Cocos2dxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Managed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

.field public static final enum MANAGED:Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

.field public static final enum UNMANAGED:Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    const-string v1, "MANAGED"

    invoke-direct {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;->MANAGED:Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    const-string v1, "UNMANAGED"

    invoke-direct {v0, v1, v3}, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;->UNMANAGED:Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    .line 237
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;->MANAGED:Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    aput-object v1, v0, v2

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;->UNMANAGED:Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    aput-object v1, v0, v3

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;->ENUM$VALUES:[Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    return-object v0
.end method

.method public static values()[Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;->ENUM$VALUES:[Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    array-length v1, v0

    new-array v2, v1, [Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
