.class public Lcom/google/firebase/inappmessaging/model/ModalMessage;
.super Lcom/google/firebase/inappmessaging/model/InAppMessage;
.source "ModalMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;
    }
.end annotation


# instance fields
.field private final action:Lcom/google/firebase/inappmessaging/model/Action;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final backgroundHexColor:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final body:Lcom/google/firebase/inappmessaging/model/Text;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final imageData:Lcom/google/firebase/inappmessaging/model/ImageData;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final title:Lcom/google/firebase/inappmessaging/model/Text;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/ImageData;Lcom/google/firebase/inappmessaging/model/Action;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/model/CampaignMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/inappmessaging/model/Text;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/inappmessaging/model/Text;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/inappmessaging/model/ImageData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/firebase/inappmessaging/model/Action;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/CampaignMetadata;",
            "Lcom/google/firebase/inappmessaging/model/Text;",
            "Lcom/google/firebase/inappmessaging/model/Text;",
            "Lcom/google/firebase/inappmessaging/model/ImageData;",
            "Lcom/google/firebase/inappmessaging/model/Action;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/google/firebase/inappmessaging/model/MessageType;->MODAL:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-direct {p0, p1, v0, p7}, Lcom/google/firebase/inappmessaging/model/InAppMessage;-><init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V

    .line 88
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->title:Lcom/google/firebase/inappmessaging/model/Text;

    .line 89
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    .line 90
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    .line 91
    iput-object p5, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    .line 92
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->backgroundHexColor:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/ImageData;Lcom/google/firebase/inappmessaging/model/Action;Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/inappmessaging/model/ModalMessage$1;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/google/firebase/inappmessaging/model/ModalMessage;-><init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/ImageData;Lcom/google/firebase/inappmessaging/model/Action;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static builder()Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;
    .locals 1

    .line 136
    new-instance v0, Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/model/ModalMessage$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 50
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/inappmessaging/model/ModalMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 53
    :cond_1
    check-cast p1, Lcom/google/firebase/inappmessaging/model/ModalMessage;

    .line 54
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/ModalMessage;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/ModalMessage;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/firebase/inappmessaging/model/ModalMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/ModalMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    invoke-virtual {v1, v3}, Lcom/google/firebase/inappmessaging/model/Text;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    return v2

    .line 60
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/firebase/inappmessaging/model/ModalMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    if-nez v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    if-eqz v1, :cond_8

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/ModalMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    invoke-virtual {v1, v3}, Lcom/google/firebase/inappmessaging/model/Action;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    return v2

    .line 63
    :cond_8
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    if-nez v1, :cond_9

    iget-object v1, p1, Lcom/google/firebase/inappmessaging/model/ModalMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    if-nez v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    if-eqz v1, :cond_b

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/ModalMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    .line 64
    invoke-virtual {v1, v3}, Lcom/google/firebase/inappmessaging/model/ImageData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    return v2

    .line 67
    :cond_b
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->title:Lcom/google/firebase/inappmessaging/model/Text;

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/ModalMessage;->title:Lcom/google/firebase/inappmessaging/model/Text;

    invoke-virtual {v1, v3}, Lcom/google/firebase/inappmessaging/model/Text;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 70
    :cond_c
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->backgroundHexColor:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/inappmessaging/model/ModalMessage;->backgroundHexColor:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    return v0

    :cond_d
    return v2
.end method

.method public getAction()Lcom/google/firebase/inappmessaging/model/Action;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    return-object v0
.end method

.method public getBackgroundHexColor()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->backgroundHexColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Lcom/google/firebase/inappmessaging/model/Text;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    return-object v0
.end method

.method public getImageData()Lcom/google/firebase/inappmessaging/model/ImageData;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    return-object v0
.end method

.method public getTitle()Lcom/google/firebase/inappmessaging/model/Text;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->title:Lcom/google/firebase/inappmessaging/model/Text;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->body:Lcom/google/firebase/inappmessaging/model/Text;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/Text;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->action:Lcom/google/firebase/inappmessaging/model/Action;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/model/Action;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 40
    :goto_1
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->imageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/model/ImageData;->hashCode()I

    move-result v1

    .line 41
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->title:Lcom/google/firebase/inappmessaging/model/Text;

    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/model/Text;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ModalMessage;->backgroundHexColor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v3, v0

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    return v3
.end method
