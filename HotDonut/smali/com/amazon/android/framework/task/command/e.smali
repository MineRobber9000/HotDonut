.class public final Lcom/amazon/android/framework/task/command/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private b:Landroid/app/Application;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private c:Lcom/amazon/android/m/c;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "CommandResultVerifier"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/framework/task/command/e;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/b/g;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/e;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amazon/android/framework/task/command/e;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageInfo() caught exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/android/b/g;

    invoke-direct {v0}, Lcom/amazon/android/b/g;-><init>()V

    throw v0
.end method

.method private static a(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "X509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/mas/kiwi/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/pm/Signature;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/h/a;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/amazon/android/framework/task/command/e;->a(Landroid/content/pm/Signature;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/framework/task/command/e;->c:Lcom/amazon/android/m/c;

    invoke-virtual {v1}, Lcom/amazon/android/m/c;->a()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/amazon/android/m/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->ERROR_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/command/e;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to extract fingerprint from signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Landroid/content/pm/Signature;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/amazon/android/framework/task/command/e;->a(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/amazon/android/framework/task/command/e;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/amazon/android/framework/task/command/e;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v2, "Failed to extract fingerprint from signature"

    invoke-virtual {v1, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/command/e;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verifying auth token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/android/framework/task/command/e;->a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-direct {p0, p1, v3}, Lcom/amazon/android/framework/task/command/e;->a(Ljava/lang/String;Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/amazon/android/b/d;

    invoke-direct {v0}, Lcom/amazon/android/b/d;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Lcom/amazon/android/framework/task/command/e;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSignatures("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/android/framework/task/command/e;->a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v0

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/amazon/android/framework/task/command/e;->b(Ljava/lang/String;Landroid/content/pm/Signature;)Z
    :try_end_0
    .catch Lcom/amazon/android/b/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amazon/android/framework/task/command/e;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v2, "isPackageSignatureValid: caught exception while checking"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move v0, v6

    goto :goto_1
.end method
