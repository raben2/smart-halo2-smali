.class public final enum Lcom/instabug/library/internal/video/ScreenRecordingService$Action;
.super Ljava/lang/Enum;
.source "ScreenRecordingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/video/ScreenRecordingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/internal/video/ScreenRecordingService$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

.field public static final enum STOP_DELETE:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

.field public static final enum STOP_KEEP:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

.field public static final enum STOP_TRIM_KEEP:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    const-string v1, "STOP_DELETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;->STOP_DELETE:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    new-instance v0, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    const-string v1, "STOP_KEEP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;->STOP_KEEP:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    new-instance v0, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    const-string v1, "STOP_TRIM_KEEP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;->STOP_TRIM_KEEP:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    const/4 v1, 0x3

    .line 2
    new-array v1, v1, [Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    sget-object v5, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;->STOP_DELETE:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    aput-object v5, v1, v2

    sget-object v2, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;->STOP_KEEP:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;->$VALUES:[Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

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

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/internal/video/ScreenRecordingService$Action;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/internal/video/ScreenRecordingService$Action;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;->$VALUES:[Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    invoke-virtual {v0}, [Lcom/instabug/library/internal/video/ScreenRecordingService$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    return-object v0
.end method
