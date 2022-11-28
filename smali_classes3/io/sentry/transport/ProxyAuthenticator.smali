.class final Lio/sentry/transport/ProxyAuthenticator;
.super Ljava/net/Authenticator;
.source "ProxyAuthenticator.java"


# instance fields
.field private final password:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final user:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    const-string v0, "user is required"

    .line 19
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/transport/ProxyAuthenticator;->user:Ljava/lang/String;

    const-string p1, "password is required"

    .line 20
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/transport/ProxyAuthenticator;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getPassword()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/sentry/transport/ProxyAuthenticator;->password:Ljava/lang/String;

    return-object v0
.end method

.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 3

    .line 25
    invoke-virtual {p0}, Lio/sentry/transport/ProxyAuthenticator;->getRequestorType()Ljava/net/Authenticator$RequestorType;

    move-result-object v0

    sget-object v1, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    if-ne v0, v1, :cond_0

    .line 26
    new-instance v0, Ljava/net/PasswordAuthentication;

    iget-object v1, p0, Lio/sentry/transport/ProxyAuthenticator;->user:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/transport/ProxyAuthenticator;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getUser()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/sentry/transport/ProxyAuthenticator;->user:Ljava/lang/String;

    return-object v0
.end method
