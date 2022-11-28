.class public final Lio/perfmark/Link;
.super Ljava/lang/Object;
.source "Link.java"


# instance fields
.field final linkId:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lio/perfmark/Link;->linkId:J

    return-void
.end method


# virtual methods
.method public link()V
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/DoNotCall;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
