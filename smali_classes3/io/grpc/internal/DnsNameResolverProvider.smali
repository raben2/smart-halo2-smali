.class public final Lio/grpc/internal/DnsNameResolverProvider;
.super Lio/grpc/internal/BaseDnsNameResolverProvider;
.source "DnsNameResolverProvider.java"


# static fields
.field private static final SRV_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "io.grpc.internal.DnsNameResolverProvider.enable_grpclb"

    const-string v1, "false"

    .line 37
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lio/grpc/internal/DnsNameResolverProvider;->SRV_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/grpc/internal/BaseDnsNameResolverProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected isSrvEnabled()Z
    .locals 1

    .line 41
    sget-boolean v0, Lio/grpc/internal/DnsNameResolverProvider;->SRV_ENABLED:Z

    return v0
.end method

.method public priority()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
