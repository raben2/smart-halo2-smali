.class final enum Lcom/instabug/library/l/b/f$a;
.super Lcom/instabug/library/l/b/f;
.source "RetentionContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/l/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# static fields
.field private static final PERIOD_IN_MONTHS:I = 0x6


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/instabug/library/l/b/f;-><init>(Ljava/lang/String;ILcom/instabug/library/l/b/f$a;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public b()J
    .locals 2

    const/4 v0, 0x6

    .line 1
    invoke-static {v0}, Lcom/instabug/library/util/TimeUtils;->monthToMillis(I)J

    move-result-wide v0

    return-wide v0
.end method
