.class public final synthetic Lio/sentry/-$$Lambda$HostnameCache$6_ZMJnpaNsMFsRhx_jb3BDmP53E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lio/sentry/HostnameCache;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/HostnameCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/-$$Lambda$HostnameCache$6_ZMJnpaNsMFsRhx_jb3BDmP53E;->f$0:Lio/sentry/HostnameCache;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/-$$Lambda$HostnameCache$6_ZMJnpaNsMFsRhx_jb3BDmP53E;->f$0:Lio/sentry/HostnameCache;

    invoke-static {v0}, Lio/sentry/HostnameCache;->lambda$updateCache$1(Lio/sentry/HostnameCache;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
