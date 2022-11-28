.class final enum Lio/grpc/internal/GzipInflatingBuffer$State;
.super Ljava/lang/Enum;
.source "GzipInflatingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/GzipInflatingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/internal/GzipInflatingBuffer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/internal/GzipInflatingBuffer$State;

.field public static final enum HEADER:Lio/grpc/internal/GzipInflatingBuffer$State;

.field public static final enum HEADER_COMMENT:Lio/grpc/internal/GzipInflatingBuffer$State;

.field public static final enum HEADER_CRC:Lio/grpc/internal/GzipInflatingBuffer$State;

.field public static final enum HEADER_EXTRA:Lio/grpc/internal/GzipInflatingBuffer$State;

.field public static final enum HEADER_EXTRA_LEN:Lio/grpc/internal/GzipInflatingBuffer$State;

.field public static final enum HEADER_NAME:Lio/grpc/internal/GzipInflatingBuffer$State;

.field public static final enum INFLATER_NEEDS_INPUT:Lio/grpc/internal/GzipInflatingBuffer$State;

.field public static final enum INFLATING:Lio/grpc/internal/GzipInflatingBuffer$State;

.field public static final enum INITIALIZE_INFLATER:Lio/grpc/internal/GzipInflatingBuffer$State;

.field public static final enum TRAILER:Lio/grpc/internal/GzipInflatingBuffer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 139
    new-instance v0, Lio/grpc/internal/GzipInflatingBuffer$State;

    const-string v1, "HEADER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/internal/GzipInflatingBuffer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 140
    new-instance v0, Lio/grpc/internal/GzipInflatingBuffer$State;

    const-string v1, "HEADER_EXTRA_LEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/grpc/internal/GzipInflatingBuffer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_EXTRA_LEN:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 141
    new-instance v0, Lio/grpc/internal/GzipInflatingBuffer$State;

    const-string v1, "HEADER_EXTRA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/grpc/internal/GzipInflatingBuffer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_EXTRA:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 142
    new-instance v0, Lio/grpc/internal/GzipInflatingBuffer$State;

    const-string v1, "HEADER_NAME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lio/grpc/internal/GzipInflatingBuffer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_NAME:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 143
    new-instance v0, Lio/grpc/internal/GzipInflatingBuffer$State;

    const-string v1, "HEADER_COMMENT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lio/grpc/internal/GzipInflatingBuffer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_COMMENT:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 144
    new-instance v0, Lio/grpc/internal/GzipInflatingBuffer$State;

    const-string v1, "HEADER_CRC"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lio/grpc/internal/GzipInflatingBuffer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_CRC:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 145
    new-instance v0, Lio/grpc/internal/GzipInflatingBuffer$State;

    const-string v1, "INITIALIZE_INFLATER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lio/grpc/internal/GzipInflatingBuffer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->INITIALIZE_INFLATER:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 146
    new-instance v0, Lio/grpc/internal/GzipInflatingBuffer$State;

    const-string v1, "INFLATING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lio/grpc/internal/GzipInflatingBuffer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->INFLATING:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 147
    new-instance v0, Lio/grpc/internal/GzipInflatingBuffer$State;

    const-string v1, "INFLATER_NEEDS_INPUT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lio/grpc/internal/GzipInflatingBuffer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->INFLATER_NEEDS_INPUT:Lio/grpc/internal/GzipInflatingBuffer$State;

    .line 148
    new-instance v0, Lio/grpc/internal/GzipInflatingBuffer$State;

    const-string v1, "TRAILER"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lio/grpc/internal/GzipInflatingBuffer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->TRAILER:Lio/grpc/internal/GzipInflatingBuffer$State;

    const/16 v0, 0xa

    .line 138
    new-array v0, v0, [Lio/grpc/internal/GzipInflatingBuffer$State;

    sget-object v1, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER:Lio/grpc/internal/GzipInflatingBuffer$State;

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_EXTRA_LEN:Lio/grpc/internal/GzipInflatingBuffer$State;

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_EXTRA:Lio/grpc/internal/GzipInflatingBuffer$State;

    aput-object v1, v0, v4

    sget-object v1, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_NAME:Lio/grpc/internal/GzipInflatingBuffer$State;

    aput-object v1, v0, v5

    sget-object v1, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_COMMENT:Lio/grpc/internal/GzipInflatingBuffer$State;

    aput-object v1, v0, v6

    sget-object v1, Lio/grpc/internal/GzipInflatingBuffer$State;->HEADER_CRC:Lio/grpc/internal/GzipInflatingBuffer$State;

    aput-object v1, v0, v7

    sget-object v1, Lio/grpc/internal/GzipInflatingBuffer$State;->INITIALIZE_INFLATER:Lio/grpc/internal/GzipInflatingBuffer$State;

    aput-object v1, v0, v8

    sget-object v1, Lio/grpc/internal/GzipInflatingBuffer$State;->INFLATING:Lio/grpc/internal/GzipInflatingBuffer$State;

    aput-object v1, v0, v9

    sget-object v1, Lio/grpc/internal/GzipInflatingBuffer$State;->INFLATER_NEEDS_INPUT:Lio/grpc/internal/GzipInflatingBuffer$State;

    aput-object v1, v0, v10

    sget-object v1, Lio/grpc/internal/GzipInflatingBuffer$State;->TRAILER:Lio/grpc/internal/GzipInflatingBuffer$State;

    aput-object v1, v0, v11

    sput-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->$VALUES:[Lio/grpc/internal/GzipInflatingBuffer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/internal/GzipInflatingBuffer$State;
    .locals 1

    .line 138
    const-class v0, Lio/grpc/internal/GzipInflatingBuffer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/internal/GzipInflatingBuffer$State;

    return-object p0
.end method

.method public static values()[Lio/grpc/internal/GzipInflatingBuffer$State;
    .locals 1

    .line 138
    sget-object v0, Lio/grpc/internal/GzipInflatingBuffer$State;->$VALUES:[Lio/grpc/internal/GzipInflatingBuffer$State;

    invoke-virtual {v0}, [Lio/grpc/internal/GzipInflatingBuffer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/internal/GzipInflatingBuffer$State;

    return-object v0
.end method
