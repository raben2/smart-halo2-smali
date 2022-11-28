.class public Lcom/google/firebase/inappmessaging/model/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/model/ImageData$Builder;
    }
.end annotation


# instance fields
.field private final bitmapData:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final imageUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->imageUrl:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->bitmapData:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static builder()Lcom/google/firebase/inappmessaging/model/ImageData$Builder;
    .locals 1

    .line 86
    new-instance v0, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 45
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/inappmessaging/model/ImageData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 48
    :cond_1
    check-cast p1, Lcom/google/firebase/inappmessaging/model/ImageData;

    .line 49
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/ImageData;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/ImageData;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->imageUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/inappmessaging/model/ImageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public getBitmapData()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->bitmapData:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->bitmapData:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
