.class Lpl/brightinventions/slf4android/DateValueSupplier;
.super Ljava/lang/Object;
.source "DateValueSupplier.java"

# interfaces
.implements Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;


# static fields
.field private static dateFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lpl/brightinventions/slf4android/DateValueSupplier$1;

    invoke-direct {v0}, Lpl/brightinventions/slf4android/DateValueSupplier$1;-><init>()V

    sput-object v0, Lpl/brightinventions/slf4android/DateValueSupplier;->dateFormat:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public append(Lpl/brightinventions/slf4android/LogRecord;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 16
    sget-object v0, Lpl/brightinventions/slf4android/DateValueSupplier;->dateFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lpl/brightinventions/slf4android/LogRecord;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
