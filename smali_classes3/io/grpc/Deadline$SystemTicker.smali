.class Lio/grpc/Deadline$SystemTicker;
.super Lio/grpc/Deadline$Ticker;
.source "Deadline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Deadline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemTicker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Lio/grpc/Deadline$Ticker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Deadline$1;)V
    .locals 0

    .line 280
    invoke-direct {p0}, Lio/grpc/Deadline$SystemTicker;-><init>()V

    return-void
.end method


# virtual methods
.method public nanoTime()J
    .locals 2

    .line 283
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
