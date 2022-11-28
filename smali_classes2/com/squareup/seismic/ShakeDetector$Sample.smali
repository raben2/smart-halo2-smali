.class Lcom/squareup/seismic/ShakeDetector$Sample;
.super Ljava/lang/Object;
.source "ShakeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/seismic/ShakeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sample"
.end annotation


# instance fields
.field accelerating:Z

.field next:Lcom/squareup/seismic/ShakeDetector$Sample;

.field timestamp:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
