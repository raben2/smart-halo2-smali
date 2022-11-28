.class public Lorg/slf4j/impl/StaticLoggerBinder;
.super Ljava/lang/Object;
.source "StaticLoggerBinder.java"

# interfaces
.implements Lorg/slf4j/spi/LoggerFactoryBinder;


# static fields
.field public static final REQUESTED_API_VERSION:Ljava/lang/String; = "1.7"

.field private static final factory:Lorg/slf4j/ILoggerFactory;

.field private static final factoryClassName:Ljava/lang/String;

.field private static final instance:Lorg/slf4j/impl/StaticLoggerBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lpl/brightinventions/slf4android/AndroidLoggerFactory;

    invoke-direct {v0}, Lpl/brightinventions/slf4android/AndroidLoggerFactory;-><init>()V

    sput-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->factory:Lorg/slf4j/ILoggerFactory;

    .line 11
    const-class v0, Lpl/brightinventions/slf4android/AndroidLoggerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->factoryClassName:Ljava/lang/String;

    .line 12
    new-instance v0, Lorg/slf4j/impl/StaticLoggerBinder;

    invoke-direct {v0}, Lorg/slf4j/impl/StaticLoggerBinder;-><init>()V

    sput-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->instance:Lorg/slf4j/impl/StaticLoggerBinder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;
    .locals 1

    .line 17
    sget-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->instance:Lorg/slf4j/impl/StaticLoggerBinder;

    return-object v0
.end method


# virtual methods
.method public getLoggerFactory()Lorg/slf4j/ILoggerFactory;
    .locals 1

    .line 22
    sget-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->factory:Lorg/slf4j/ILoggerFactory;

    return-object v0
.end method

.method public getLoggerFactoryClassStr()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->factoryClassName:Ljava/lang/String;

    return-object v0
.end method
