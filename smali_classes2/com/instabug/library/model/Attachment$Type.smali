.class public final enum Lcom/instabug/library/model/Attachment$Type;
.super Ljava/lang/Enum;
.source "Attachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/model/Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/model/Attachment$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/model/Attachment$Type;

.field public static final enum ATTACHMENT_FILE:Lcom/instabug/library/model/Attachment$Type;

.field public static final enum AUDIO:Lcom/instabug/library/model/Attachment$Type;

.field public static final enum AUTO_SCREEN_RECORDING_VIDEO:Lcom/instabug/library/model/Attachment$Type;

.field public static final enum EXTRA_IMAGE:Lcom/instabug/library/model/Attachment$Type;

.field public static final enum EXTRA_VIDEO:Lcom/instabug/library/model/Attachment$Type;

.field public static final enum GALLERY_IMAGE:Lcom/instabug/library/model/Attachment$Type;

.field public static final enum GALLERY_VIDEO:Lcom/instabug/library/model/Attachment$Type;

.field public static final enum MAIN_SCREENSHOT:Lcom/instabug/library/model/Attachment$Type;

.field public static final enum NOT_AVAILABLE:Lcom/instabug/library/model/Attachment$Type;

.field public static final enum VIEW_HIERARCHY:Lcom/instabug/library/model/Attachment$Type;

.field public static final enum VISUAL_USER_STEPS:Lcom/instabug/library/model/Attachment$Type;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/instabug/library/model/Attachment$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/instabug/library/model/Attachment$Type;

    const-string v1, "MAIN_SCREENSHOT"

    const-string v2, "main-screenshot"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/instabug/library/model/Attachment$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/Attachment$Type;->MAIN_SCREENSHOT:Lcom/instabug/library/model/Attachment$Type;

    new-instance v0, Lcom/instabug/library/model/Attachment$Type;

    const-string v1, "AUDIO"

    const-string v2, "audio"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/instabug/library/model/Attachment$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/Attachment$Type;->AUDIO:Lcom/instabug/library/model/Attachment$Type;

    .line 2
    new-instance v0, Lcom/instabug/library/model/Attachment$Type;

    const-string v1, "EXTRA_IMAGE"

    const-string v2, "extra_image"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/instabug/library/model/Attachment$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/Attachment$Type;->EXTRA_IMAGE:Lcom/instabug/library/model/Attachment$Type;

    new-instance v0, Lcom/instabug/library/model/Attachment$Type;

    const-string v1, "EXTRA_VIDEO"

    const-string v2, "extra_video"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/instabug/library/model/Attachment$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/Attachment$Type;->EXTRA_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    .line 3
    new-instance v0, Lcom/instabug/library/model/Attachment$Type;

    const-string v1, "GALLERY_IMAGE"

    const-string v2, "image_gallery"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/instabug/library/model/Attachment$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/Attachment$Type;->GALLERY_IMAGE:Lcom/instabug/library/model/Attachment$Type;

    new-instance v0, Lcom/instabug/library/model/Attachment$Type;

    const-string v1, "GALLERY_VIDEO"

    const-string v2, "video_gallery"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/instabug/library/model/Attachment$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/Attachment$Type;->GALLERY_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    .line 4
    new-instance v0, Lcom/instabug/library/model/Attachment$Type;

    const-string v1, "ATTACHMENT_FILE"

    const-string v2, "attachment-file"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/instabug/library/model/Attachment$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/Attachment$Type;->ATTACHMENT_FILE:Lcom/instabug/library/model/Attachment$Type;

    new-instance v0, Lcom/instabug/library/model/Attachment$Type;

    const-string v1, "VIEW_HIERARCHY"

    const-string v2, "view-hierarchy-v2"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/instabug/library/model/Attachment$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/Attachment$Type;->VIEW_HIERARCHY:Lcom/instabug/library/model/Attachment$Type;

    .line 5
    new-instance v0, Lcom/instabug/library/model/Attachment$Type;

    const-string v1, "NOT_AVAILABLE"

    const-string v2, "not-available"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/instabug/library/model/Attachment$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/Attachment$Type;->NOT_AVAILABLE:Lcom/instabug/library/model/Attachment$Type;

    new-instance v0, Lcom/instabug/library/model/Attachment$Type;

    const-string v1, "VISUAL_USER_STEPS"

    const-string v2, "user-repro-steps-v2"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/instabug/library/model/Attachment$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/Attachment$Type;->VISUAL_USER_STEPS:Lcom/instabug/library/model/Attachment$Type;

    .line 6
    new-instance v0, Lcom/instabug/library/model/Attachment$Type;

    const-string v1, "AUTO_SCREEN_RECORDING_VIDEO"

    const-string v2, "auto-screen-recording-v2"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/instabug/library/model/Attachment$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/Attachment$Type;->AUTO_SCREEN_RECORDING_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    const/16 v1, 0xb

    .line 7
    new-array v1, v1, [Lcom/instabug/library/model/Attachment$Type;

    sget-object v2, Lcom/instabug/library/model/Attachment$Type;->MAIN_SCREENSHOT:Lcom/instabug/library/model/Attachment$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/model/Attachment$Type;->AUDIO:Lcom/instabug/library/model/Attachment$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/library/model/Attachment$Type;->EXTRA_IMAGE:Lcom/instabug/library/model/Attachment$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/instabug/library/model/Attachment$Type;->EXTRA_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/instabug/library/model/Attachment$Type;->GALLERY_IMAGE:Lcom/instabug/library/model/Attachment$Type;

    aput-object v2, v1, v7

    sget-object v2, Lcom/instabug/library/model/Attachment$Type;->GALLERY_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    aput-object v2, v1, v8

    sget-object v2, Lcom/instabug/library/model/Attachment$Type;->ATTACHMENT_FILE:Lcom/instabug/library/model/Attachment$Type;

    aput-object v2, v1, v9

    sget-object v2, Lcom/instabug/library/model/Attachment$Type;->VIEW_HIERARCHY:Lcom/instabug/library/model/Attachment$Type;

    aput-object v2, v1, v10

    sget-object v2, Lcom/instabug/library/model/Attachment$Type;->NOT_AVAILABLE:Lcom/instabug/library/model/Attachment$Type;

    aput-object v2, v1, v11

    sget-object v2, Lcom/instabug/library/model/Attachment$Type;->VISUAL_USER_STEPS:Lcom/instabug/library/model/Attachment$Type;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/instabug/library/model/Attachment$Type;->$VALUES:[Lcom/instabug/library/model/Attachment$Type;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instabug/library/model/Attachment$Type;->lookup:Ljava/util/Map;

    .line 20
    invoke-static {}, Lcom/instabug/library/model/Attachment$Type;->values()[Lcom/instabug/library/model/Attachment$Type;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 21
    sget-object v4, Lcom/instabug/library/model/Attachment$Type;->lookup:Ljava/util/Map;

    iget-object v5, v2, Lcom/instabug/library/model/Attachment$Type;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/instabug/library/model/Attachment$Type;->name:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/instabug/library/model/Attachment$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/model/Attachment$Type;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/model/Attachment$Type;

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/instabug/library/model/Attachment$Type;->NOT_AVAILABLE:Lcom/instabug/library/model/Attachment$Type;

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/model/Attachment$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/model/Attachment$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/model/Attachment$Type;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/model/Attachment$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/model/Attachment$Type;->$VALUES:[Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v0}, [Lcom/instabug/library/model/Attachment$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/model/Attachment$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/Attachment$Type;->name:Ljava/lang/String;

    return-object v0
.end method
