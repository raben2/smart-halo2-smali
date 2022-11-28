.class public Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;
.super Lcom/google/firebase/inappmessaging/model/InAppMessage;
.source "ImageOnlyMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage$Builder;
    }
.end annotation


# instance fields
.field private action:Lcom/google/firebase/inappmessaging/model/Action;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private imageData:Lcom/google/firebase/inappmessaging/model/ImageData;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/ImageData;Lcom/google/firebase/inappmessaging/model/Action;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/model/CampaignMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/inappmessaging/model/ImageData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/inappmessaging/model/Action;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/CampaignMetadata;",
            "Lcom/google/firebase/inappmessaging/model/ImageData;",
            "Lcom/google/firebase/inappmessaging/model/Action;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/google/firebase/inappmessaging/model/MessageType;->IMAGE_ONLY:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-direct {p0, p1, v0, p4}, Lcom/google/firebase/inappmessaging/model/InAppMessage;-><init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V

    .line 69
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    .line 70
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/ImageData;Lcom/google/firebase/inappmessaging/model/Action;Ljava/util/Map;Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;-><init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/ImageData;Lcom/google/firebase/inappmessaging/model/Action;Ljava/util/Map;)V

    return-void
.end method

.method public static builder()Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage$Builder;
    .locals 1

    .line 93
    new-instance v0, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage$Builder;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 44
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 47
    :cond_1
    check-cast p1, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;

    .line 48
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    invoke-virtual {v1, v3}, Lcom/google/firebase/inappmessaging/model/Action;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    return v2

    .line 54
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    iget-object p1, p1, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    invoke-virtual {v1, p1}, Lcom/google/firebase/inappmessaging/model/ImageData;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public getAction()Lcom/google/firebase/inappmessaging/model/Action;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    return-object v0
.end method

.method public getImageData()Lcom/google/firebase/inappmessaging/model/ImageData;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/Action;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/ImageData;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
