.class final Lcom/amazon/android/licensing/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/licensing/h;


# instance fields
.field private synthetic a:Lcom/amazon/android/framework/prompt/PromptContent;

.field private synthetic b:Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;


# direct methods
.method constructor <init>(Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;Lcom/amazon/android/framework/prompt/PromptContent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/licensing/g;->b:Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;

    iput-object p2, p0, Lcom/amazon/android/licensing/g;->a:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazon/android/framework/exception/KiwiException;)Lcom/amazon/android/framework/prompt/PromptContent;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/licensing/g;->a:Lcom/amazon/android/framework/prompt/PromptContent;

    return-object v0
.end method
