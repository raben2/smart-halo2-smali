.class public final enum Lio/grpc/Status$Code;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/Status$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/Status$Code;

.field public static final enum ABORTED:Lio/grpc/Status$Code;

.field public static final enum ALREADY_EXISTS:Lio/grpc/Status$Code;

.field public static final enum CANCELLED:Lio/grpc/Status$Code;

.field public static final enum DATA_LOSS:Lio/grpc/Status$Code;

.field public static final enum DEADLINE_EXCEEDED:Lio/grpc/Status$Code;

.field public static final enum FAILED_PRECONDITION:Lio/grpc/Status$Code;

.field public static final enum INTERNAL:Lio/grpc/Status$Code;

.field public static final enum INVALID_ARGUMENT:Lio/grpc/Status$Code;

.field public static final enum NOT_FOUND:Lio/grpc/Status$Code;

.field public static final enum OK:Lio/grpc/Status$Code;

.field public static final enum OUT_OF_RANGE:Lio/grpc/Status$Code;

.field public static final enum PERMISSION_DENIED:Lio/grpc/Status$Code;

.field public static final enum RESOURCE_EXHAUSTED:Lio/grpc/Status$Code;

.field public static final enum UNAUTHENTICATED:Lio/grpc/Status$Code;

.field public static final enum UNAVAILABLE:Lio/grpc/Status$Code;

.field public static final enum UNIMPLEMENTED:Lio/grpc/Status$Code;

.field public static final enum UNKNOWN:Lio/grpc/Status$Code;


# instance fields
.field private final value:I

.field private final valueAscii:[B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 65
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    .line 70
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "CANCELLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->CANCELLED:Lio/grpc/Status$Code;

    .line 79
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->UNKNOWN:Lio/grpc/Status$Code;

    .line 87
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "INVALID_ARGUMENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->INVALID_ARGUMENT:Lio/grpc/Status$Code;

    .line 96
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "DEADLINE_EXCEEDED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->DEADLINE_EXCEEDED:Lio/grpc/Status$Code;

    .line 101
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "NOT_FOUND"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->NOT_FOUND:Lio/grpc/Status$Code;

    .line 106
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "ALREADY_EXISTS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->ALREADY_EXISTS:Lio/grpc/Status$Code;

    .line 116
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "PERMISSION_DENIED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->PERMISSION_DENIED:Lio/grpc/Status$Code;

    .line 122
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "RESOURCE_EXHAUSTED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->RESOURCE_EXHAUSTED:Lio/grpc/Status$Code;

    .line 141
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "FAILED_PRECONDITION"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->FAILED_PRECONDITION:Lio/grpc/Status$Code;

    .line 150
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "ABORTED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->ABORTED:Lio/grpc/Status$Code;

    .line 168
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "OUT_OF_RANGE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->OUT_OF_RANGE:Lio/grpc/Status$Code;

    .line 173
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "UNIMPLEMENTED"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->UNIMPLEMENTED:Lio/grpc/Status$Code;

    .line 180
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "INTERNAL"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    .line 191
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "UNAVAILABLE"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    .line 196
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "DATA_LOSS"

    const/16 v15, 0xf

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->DATA_LOSS:Lio/grpc/Status$Code;

    .line 202
    new-instance v0, Lio/grpc/Status$Code;

    const-string v1, "UNAUTHENTICATED"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v1, v14, v15}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->UNAUTHENTICATED:Lio/grpc/Status$Code;

    const/16 v0, 0x11

    .line 61
    new-array v0, v0, [Lio/grpc/Status$Code;

    sget-object v1, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/Status$Code;->CANCELLED:Lio/grpc/Status$Code;

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/Status$Code;->UNKNOWN:Lio/grpc/Status$Code;

    aput-object v1, v0, v4

    sget-object v1, Lio/grpc/Status$Code;->INVALID_ARGUMENT:Lio/grpc/Status$Code;

    aput-object v1, v0, v5

    sget-object v1, Lio/grpc/Status$Code;->DEADLINE_EXCEEDED:Lio/grpc/Status$Code;

    aput-object v1, v0, v6

    sget-object v1, Lio/grpc/Status$Code;->NOT_FOUND:Lio/grpc/Status$Code;

    aput-object v1, v0, v7

    sget-object v1, Lio/grpc/Status$Code;->ALREADY_EXISTS:Lio/grpc/Status$Code;

    aput-object v1, v0, v8

    sget-object v1, Lio/grpc/Status$Code;->PERMISSION_DENIED:Lio/grpc/Status$Code;

    aput-object v1, v0, v9

    sget-object v1, Lio/grpc/Status$Code;->RESOURCE_EXHAUSTED:Lio/grpc/Status$Code;

    aput-object v1, v0, v10

    sget-object v1, Lio/grpc/Status$Code;->FAILED_PRECONDITION:Lio/grpc/Status$Code;

    aput-object v1, v0, v11

    sget-object v1, Lio/grpc/Status$Code;->ABORTED:Lio/grpc/Status$Code;

    aput-object v1, v0, v12

    sget-object v1, Lio/grpc/Status$Code;->OUT_OF_RANGE:Lio/grpc/Status$Code;

    aput-object v1, v0, v13

    sget-object v1, Lio/grpc/Status$Code;->UNIMPLEMENTED:Lio/grpc/Status$Code;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/Status$Code;->DATA_LOSS:Lio/grpc/Status$Code;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/Status$Code;->UNAUTHENTICATED:Lio/grpc/Status$Code;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lio/grpc/Status$Code;->$VALUES:[Lio/grpc/Status$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 209
    iput p3, p0, Lio/grpc/Status$Code;->value:I

    .line 210
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lio/grpc/Status$Code;->valueAscii:[B

    return-void
.end method

.method static synthetic access$300(Lio/grpc/Status$Code;)[B
    .locals 0

    .line 61
    invoke-direct {p0}, Lio/grpc/Status$Code;->valueAscii()[B

    move-result-object p0

    return-object p0
.end method

.method private valueAscii()[B
    .locals 1

    .line 228
    iget-object v0, p0, Lio/grpc/Status$Code;->valueAscii:[B

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/Status$Code;
    .locals 1

    .line 61
    const-class v0, Lio/grpc/Status$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/Status$Code;

    return-object p0
.end method

.method public static values()[Lio/grpc/Status$Code;
    .locals 1

    .line 61
    sget-object v0, Lio/grpc/Status$Code;->$VALUES:[Lio/grpc/Status$Code;

    invoke-virtual {v0}, [Lio/grpc/Status$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/Status$Code;

    return-object v0
.end method


# virtual methods
.method public toStatus()Lio/grpc/Status;
    .locals 2

    .line 224
    invoke-static {}, Lio/grpc/Status;->access$000()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lio/grpc/Status$Code;->value:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Status;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 217
    iget v0, p0, Lio/grpc/Status$Code;->value:I

    return v0
.end method
