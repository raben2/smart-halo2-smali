.class public interface abstract annotation Lcom/instabug/apm/model/LogLevel;
.super Ljava/lang/Object;
.source "LogLevel.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/apm/model/LogLevel$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DEBUG:I = 0x4

.field public static final ERROR:I = 0x1

.field public static final INFO:I = 0x3

.field public static final NONE:I = 0x0

.field public static final VERBOSE:I = 0x5

.field public static final WARNING:I = 0x2
