.class public final enum Lcom/instabug/library/model/Attachment$AttachmentState;
.super Ljava/lang/Enum;
.source "Attachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/model/Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttachmentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/model/Attachment$AttachmentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/model/Attachment$AttachmentState;

.field public static final enum NOT_AVAILABLE:Lcom/instabug/library/model/Attachment$AttachmentState;

.field public static final enum OFFLINE:Lcom/instabug/library/model/Attachment$AttachmentState;

.field public static final enum SYNCED:Lcom/instabug/library/model/Attachment$AttachmentState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/instabug/library/model/Attachment$AttachmentState;

    const-string v1, "OFFLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/model/Attachment$AttachmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/model/Attachment$AttachmentState;->OFFLINE:Lcom/instabug/library/model/Attachment$AttachmentState;

    new-instance v0, Lcom/instabug/library/model/Attachment$AttachmentState;

    const-string v1, "SYNCED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/model/Attachment$AttachmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/model/Attachment$AttachmentState;->SYNCED:Lcom/instabug/library/model/Attachment$AttachmentState;

    new-instance v0, Lcom/instabug/library/model/Attachment$AttachmentState;

    const-string v1, "NOT_AVAILABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/library/model/Attachment$AttachmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/model/Attachment$AttachmentState;->NOT_AVAILABLE:Lcom/instabug/library/model/Attachment$AttachmentState;

    const/4 v1, 0x3

    .line 2
    new-array v1, v1, [Lcom/instabug/library/model/Attachment$AttachmentState;

    sget-object v5, Lcom/instabug/library/model/Attachment$AttachmentState;->OFFLINE:Lcom/instabug/library/model/Attachment$AttachmentState;

    aput-object v5, v1, v2

    sget-object v2, Lcom/instabug/library/model/Attachment$AttachmentState;->SYNCED:Lcom/instabug/library/model/Attachment$AttachmentState;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/instabug/library/model/Attachment$AttachmentState;->$VALUES:[Lcom/instabug/library/model/Attachment$AttachmentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/model/Attachment$AttachmentState;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/model/Attachment$AttachmentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/model/Attachment$AttachmentState;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/model/Attachment$AttachmentState;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/model/Attachment$AttachmentState;->$VALUES:[Lcom/instabug/library/model/Attachment$AttachmentState;

    invoke-virtual {v0}, [Lcom/instabug/library/model/Attachment$AttachmentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/model/Attachment$AttachmentState;

    return-object v0
.end method
