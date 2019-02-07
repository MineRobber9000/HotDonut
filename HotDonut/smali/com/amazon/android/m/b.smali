.class public final Lcom/amazon/android/m/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/amazon/android/framework/util/KiwiLogger;

.field private static final e:Ljava/util/Set;


# instance fields
.field private final b:Ljava/security/cert/PKIXParameters;

.field private final c:Ljava/security/cert/CertPathValidator;

.field private final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "CertVerifier"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/m/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/android/m/b;->e:Ljava/util/Set;

    const-string v1, "verisign"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/amazon/android/m/b;->e:Ljava/util/Set;

    const-string v1, "thawte"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/amazon/android/m/b;->d:Ljava/util/Set;

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    array-length v2, v1

    move v3, v11

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v0, v1, v3

    instance-of v4, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_3

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v4, v0

    move v5, v11

    move v6, v11

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v7, v0, v5

    invoke-static {v7}, Lcom/amazon/android/m/b;->a(Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-boolean v8, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/amazon/android/m/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trusted Cert: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    new-instance v8, Ljava/security/cert/TrustAnchor;

    invoke-direct {v8, v7, v12}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    iget-object v7, p0, Lcom/amazon/android/m/b;->d:Ljava/util/Set;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amazon/android/m/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v4, "loaded %d certs\n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amazon/android/m/b;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazon/android/m/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "TrustManager did not return valid accepted issuers, likely 3P custom TrustManager implementation issue."

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    :cond_5
    new-instance v0, Ljava/security/cert/PKIXParameters;

    iget-object v1, p0, Lcom/amazon/android/m/b;->d:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/amazon/android/m/b;->b:Ljava/security/cert/PKIXParameters;

    iget-object v0, p0, Lcom/amazon/android/m/b;->b:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0, v11}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/m/b;->c:Ljava/security/cert/CertPathValidator;

    return-void
.end method

.method private static a(Ljava/security/cert/X509Certificate;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/m/b;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/security/cert/CertPath;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/m/b;->c:Ljava/security/cert/CertPathValidator;

    iget-object v2, p0, Lcom/amazon/android/m/b;->b:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1, p1, v2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateExpiredException;

    if-eqz v1, :cond_0

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/m/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "CertVerifier doesn\'t care about an out of date certificate."

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v2, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/android/m/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to verify cert path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
