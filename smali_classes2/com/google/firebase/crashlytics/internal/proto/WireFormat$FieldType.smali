.class enum Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/proto/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = "FieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum BOOL:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum BYTES:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum DOUBLE:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum ENUM:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum FIXED32:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum FIXED64:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum FLOAT:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum GROUP:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum INT32:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum INT64:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum MESSAGE:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum SFIXED32:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum SFIXED64:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum SINT32:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum SINT64:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum STRING:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum UINT32:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

.field public static final enum UINT64:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;


# instance fields
.field private final javaType:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

.field private final wireType:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 110
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const-string v1, "DOUBLE"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->DOUBLE:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->DOUBLE:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 111
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const-string v1, "FLOAT"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->FLOAT:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/4 v5, 0x5

    invoke-direct {v0, v1, v3, v2, v5}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->FLOAT:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 112
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const-string v1, "INT64"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->LONG:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->INT64:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 113
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const-string v1, "UINT64"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->LONG:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->UINT64:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 114
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const-string v1, "INT32"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->INT:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->INT32:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 115
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const-string v1, "FIXED64"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->LONG:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->FIXED64:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 116
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const-string v1, "FIXED32"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->INT:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2, v5}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->FIXED32:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 117
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const-string v1, "BOOL"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->BOOLEAN:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2, v4}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->BOOL:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 118
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType$1;

    const-string v1, "STRING"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->STRING:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2, v6}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType$1;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->STRING:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 123
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType$2;

    const-string v1, "GROUP"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->MESSAGE:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2, v7}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType$2;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->GROUP:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 128
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType$3;

    const-string v1, "MESSAGE"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->MESSAGE:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2, v6}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType$3;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->MESSAGE:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 133
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType$4;

    const-string v1, "BYTES"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->BYTE_STRING:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2, v6}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType$4;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->BYTES:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 138
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const-string v1, "UINT32"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->INT:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->UINT32:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 139
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const-string v1, "ENUM"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->ENUM:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->ENUM:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 140
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const-string v1, "SFIXED32"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->INT:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2, v5}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->SFIXED32:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 141
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const-string v1, "SFIXED64"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->LONG:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->SFIXED64:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 142
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const-string v1, "SINT32"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->INT:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->SINT32:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    .line 143
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const-string v1, "SINT64"

    sget-object v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;->LONG:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->SINT64:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const/16 v0, 0x12

    .line 109
    new-array v0, v0, [Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->DOUBLE:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->FLOAT:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->INT64:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->UINT64:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->INT32:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->FIXED64:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->FIXED32:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->BOOL:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->STRING:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->GROUP:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->MESSAGE:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->BYTES:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->UINT32:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->ENUM:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->SFIXED32:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->SFIXED64:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->SINT32:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->SINT64:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->$VALUES:[Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;",
            "I)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->javaType:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    .line 147
    iput p4, p0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->wireType:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;
    .locals 1

    .line 109
    const-class v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;
    .locals 1

    .line 109
    sget-object v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->$VALUES:[Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->javaType:Lcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;

    return-object v0
.end method

.method public getWireType()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;->wireType:I

    return v0
.end method

.method public isPackable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
