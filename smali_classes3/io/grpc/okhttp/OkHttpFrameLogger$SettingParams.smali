.class final enum Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;
.super Ljava/lang/Enum;
.source "OkHttpFrameLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpFrameLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SettingParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

.field public static final enum ENABLE_PUSH:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

.field public static final enum HEADER_TABLE_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

.field public static final enum INITIAL_WINDOW_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

.field public static final enum MAX_CONCURRENT_STREAMS:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

.field public static final enum MAX_FRAME_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

.field public static final enum MAX_HEADER_LIST_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;


# instance fields
.field private final bit:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 201
    new-instance v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    const-string v1, "HEADER_TABLE_SIZE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->HEADER_TABLE_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    .line 202
    new-instance v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    const-string v1, "ENABLE_PUSH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->ENABLE_PUSH:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    .line 203
    new-instance v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    const-string v1, "MAX_CONCURRENT_STREAMS"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->MAX_CONCURRENT_STREAMS:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    .line 204
    new-instance v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    const-string v1, "MAX_FRAME_SIZE"

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->MAX_FRAME_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    .line 205
    new-instance v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    const-string v1, "MAX_HEADER_LIST_SIZE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v5, v8}, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->MAX_HEADER_LIST_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    .line 206
    new-instance v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    const-string v1, "INITIAL_WINDOW_SIZE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v7, v9}, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->INITIAL_WINDOW_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    .line 200
    new-array v0, v8, [Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->HEADER_TABLE_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->ENABLE_PUSH:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->MAX_CONCURRENT_STREAMS:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    aput-object v1, v0, v4

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->MAX_FRAME_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    aput-object v1, v0, v6

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->MAX_HEADER_LIST_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    aput-object v1, v0, v5

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->INITIAL_WINDOW_SIZE:Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    aput-object v1, v0, v7

    sput-object v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->$VALUES:[Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 211
    iput p3, p0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->bit:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;
    .locals 1

    .line 200
    const-class v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    return-object p0
.end method

.method public static values()[Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;
    .locals 1

    .line 200
    sget-object v0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->$VALUES:[Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    invoke-virtual {v0}, [Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    return-object v0
.end method


# virtual methods
.method public getBit()I
    .locals 1

    .line 215
    iget v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->bit:I

    return v0
.end method
