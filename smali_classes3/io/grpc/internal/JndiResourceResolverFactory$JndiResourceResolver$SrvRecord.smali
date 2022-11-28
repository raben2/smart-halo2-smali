.class final Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;
.super Ljava/lang/Object;
.source "JndiResourceResolverFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SrvRecord"
.end annotation


# instance fields
.field final host:Ljava/lang/String;

.field final port:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;->host:Ljava/lang/String;

    .line 197
    iput p2, p0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;->port:I

    return-void
.end method
