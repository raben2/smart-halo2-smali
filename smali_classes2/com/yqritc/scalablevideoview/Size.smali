.class public Lcom/yqritc/scalablevideoview/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/yqritc/scalablevideoview/Size;->mWidth:I

    .line 13
    iput p2, p0, Lcom/yqritc/scalablevideoview/Size;->mHeight:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/yqritc/scalablevideoview/Size;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/yqritc/scalablevideoview/Size;->mWidth:I

    return v0
.end method
