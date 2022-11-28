.class public final synthetic Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$pBWDh2PW8EDU3lTRVSAOGQazyz4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/AuthenticationManager;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/AuthenticationManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$pBWDh2PW8EDU3lTRVSAOGQazyz4;->f$0:Lbike/smarthalo/app/managers/AuthenticationManager;

    iput-object p2, p0, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$pBWDh2PW8EDU3lTRVSAOGQazyz4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$pBWDh2PW8EDU3lTRVSAOGQazyz4;->f$0:Lbike/smarthalo/app/managers/AuthenticationManager;

    iget-object v1, p0, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$pBWDh2PW8EDU3lTRVSAOGQazyz4;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/managers/AuthenticationManager;->lambda$launchTokenRefreshFlow$1(Lbike/smarthalo/app/managers/AuthenticationManager;Ljava/lang/String;Ljava/lang/Throwable;)Lbike/smarthalo/app/models/TokenRefreshState;

    move-result-object p1

    return-object p1
.end method
