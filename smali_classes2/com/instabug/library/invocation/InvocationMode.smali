.class public interface abstract annotation Lcom/instabug/library/invocation/InvocationMode;
.super Ljava/lang/Object;
.source "InvocationMode.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ASK_QUESTION:I = 0x3

.field public static final CHATS:I = 0x4

.field public static final FEATURE_REQUESTS:I = 0x5

.field public static final NEW_BUG:I = 0x1

.field public static final NEW_FEEDBACK:I = 0x2

.field public static final PROMPT_OPTIONS:I = 0x0

.field public static final UNDEFINED:I = -0x1
