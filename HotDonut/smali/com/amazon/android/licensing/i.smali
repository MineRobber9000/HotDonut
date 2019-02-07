.class public final Lcom/amazon/android/licensing/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/amazon/android/framework/prompt/PromptContent;

.field public static final b:Lcom/amazon/android/framework/prompt/PromptContent;

.field public static final c:Lcom/amazon/android/framework/prompt/PromptContent;

.field public static final d:Lcom/amazon/android/framework/prompt/PromptContent;

.field public static final e:Lcom/amazon/android/framework/prompt/PromptContent;

.field public static final f:Lcom/amazon/android/framework/prompt/PromptContent;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x0

    const/4 v4, 0x1

    const-string v1, "Amazon Appstore required"

    const-string v3, "OK"

    new-instance v0, Lcom/amazon/android/framework/prompt/PromptContent;

    const-string v2, "Amazon Appstore required"

    const-string v2, "It looks like you no longer have an Amazon Appstore on your device. Please install an Amazon Appstore and sign in with your username and password to use this app"

    const-string v5, "OK"

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/framework/prompt/PromptContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/android/licensing/i;->a:Lcom/amazon/android/framework/prompt/PromptContent;

    new-instance v5, Lcom/amazon/android/framework/prompt/PromptContent;

    const-string v6, "Amazon Appstore: store connection failure"

    const-string v7, "An error occurred connecting to Amazon\'s Appstore. Please try again"

    const-string v0, "OK"

    move-object v8, v3

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/amazon/android/framework/prompt/PromptContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lcom/amazon/android/licensing/i;->b:Lcom/amazon/android/framework/prompt/PromptContent;

    new-instance v0, Lcom/amazon/android/framework/prompt/PromptContent;

    const-string v2, "Amazon Appstore required"

    const-string v2, "Your version of the Amazon Appstore appears to be out of date.  Please visit Amazon.com to install the latest version of the Appstore."

    const-string v5, "OK"

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/framework/prompt/PromptContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/android/licensing/i;->c:Lcom/amazon/android/framework/prompt/PromptContent;

    new-instance v0, Lcom/amazon/android/framework/prompt/PromptContent;

    const-string v1, "Amazon Appstore: internet connection required"

    const-string v2, "An internet connection is required to launch this app. Please connect to the internet to continue"

    const-string v5, "OK"

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/framework/prompt/PromptContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/android/licensing/i;->d:Lcom/amazon/android/framework/prompt/PromptContent;

    new-instance v0, Lcom/amazon/android/framework/prompt/PromptContent;

    const-string v1, "Amazon Appstore: unknown error"

    const-string v2, "An error occurred. Please download this app again from the Amazon Appstore"

    const-string v5, "OK"

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/framework/prompt/PromptContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/android/licensing/i;->e:Lcom/amazon/android/framework/prompt/PromptContent;

    new-instance v0, Lcom/amazon/android/framework/prompt/PromptContent;

    const-string v1, "Amazon Appstore: internal failure"

    const-string v2, "An internal error occured, please try launching the app again"

    const-string v5, "OK"

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/framework/prompt/PromptContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/android/licensing/i;->f:Lcom/amazon/android/framework/prompt/PromptContent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
