.class Lpl/brightinventions/slf4android/AtLeastFilter;
.super Ljava/lang/Object;
.source "AtLeastFilter.java"

# interfaces
.implements Ljava/util/logging/Filter;


# instance fields
.field private final level:Lpl/brightinventions/slf4android/LogLevel;


# direct methods
.method public constructor <init>(Lpl/brightinventions/slf4android/LogLevel;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lpl/brightinventions/slf4android/AtLeastFilter;->level:Lpl/brightinventions/slf4android/LogLevel;

    return-void
.end method


# virtual methods
.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 1

    .line 15
    iget-object v0, p0, Lpl/brightinventions/slf4android/AtLeastFilter;->level:Lpl/brightinventions/slf4android/LogLevel;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object p1

    invoke-virtual {v0, p1}, Lpl/brightinventions/slf4android/LogLevel;->isSmallerOrEqualTo(Ljava/util/logging/Level;)Z

    move-result p1

    return p1
.end method
